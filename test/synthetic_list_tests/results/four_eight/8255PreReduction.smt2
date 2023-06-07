
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
(assert (not (= l1 Nil)) )
(assert (or (= l0 l0) (= l1 l2) (= l2 l2)) )
(assert (not (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (= l2 l3) )
(assert (or (= l1 l1) (is-Cons Nil)) )
(check-sat)
