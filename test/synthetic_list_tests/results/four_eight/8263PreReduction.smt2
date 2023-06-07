
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
(assert (or (= l2 l0) (= l2 Nil) (= l2 Nil) (= l3 l2)) )
(assert (is-Cons l1) )
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l2 l1)) )
(assert (or (= l0 Nil) (= l3 Nil) (is-Cons l2)) )
(assert (not (= l0 l0)) )
(assert (= l2 l0) )
(assert (is-Cons l3) )
(check-sat)
