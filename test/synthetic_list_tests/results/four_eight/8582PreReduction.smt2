
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (is-Cons Nil) (= l2 l1) (= l1 Nil) (= l2 Nil)) )
(assert (and (= l2 l1) (= l2 l2)) )
(assert (and (= l1 l3) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l3 l0) (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(check-sat)
