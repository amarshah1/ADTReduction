
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
(assert (and (= l0 Nil) (= l2 l0) (= l0 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l2 l2) (= l2 l2) (= l0 l0)) )
(assert (= l1 l2) )
(assert (is-Cons l3) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Cons l2)) )
(check-sat)
