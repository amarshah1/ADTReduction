
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
(assert (not (= l1 l0)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (not (is-Cons l0)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Cons l2) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (not (= l2 l3)) )
(check-sat)
