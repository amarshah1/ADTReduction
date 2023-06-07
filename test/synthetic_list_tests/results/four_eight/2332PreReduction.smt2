
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
(assert (or (= l2 Nil) (= l1 l2)) )
(assert (and (= l3 l1) (= l3 l0) (= l0 Nil) (is-Cons Nil)) )
(assert (not (is-Cons l2)) )
(assert (= l1 Nil) )
(assert (is-Cons l2) )
(assert (= l2 Nil) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l0) )
(check-sat)
