
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
(assert (or (= l0 l2) (= l2 l0) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (is-Cons l3) )
(assert (or (= l2 l2) (is-Cons Nil) (= l3 l1) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l1 Nil)) )
(check-sat)
